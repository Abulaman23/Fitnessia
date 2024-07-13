//contains logic for registration and login

const UserServices = require('../services/user_services');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

exports.register = async (req, res, next) => {
    try{
        console.log(req.body);
        const {email, password, age, gender, weight, height, goal, activity} = req.body;

        const duplicateUser = await UserServices.getUserByEmail(email);
        if(duplicateUser){
            return res.status(400).json({message: "User already exists"});
        }

        //Register the user with extended details
        const user = await UserServices.registerUser(email, password, age, gender, weight, height, goal, activity);

        res.json({ status: "success", message: "User registered successfully" });
    }
    catch(err){
        console.log(err);
        next(err);
    }
};

exports.login = async(req,res) => {
    try{
        const {email, password} = req.body;

        const user = await UserServices.getUserByEmail(email);
        if(!user){
            return res.status(400).json({message: "User does not exist"});
        }
        const passwordMatch = await UserServices.comparePassword(password, user.password);
        if(!passwordMatch){
            return res.status(400).json({message: "Invalid password!"});
        }

        // Generate JWT token
        let tokenData;
        tokenData = {
        id: user._id,
        email: user.email
        }; // data to be passed to the token

        const jwtSecretKey = 'A123';
        //Create token
        const token = await UserServices.generateToken(tokenData, jwtSecretKey, "1h"); 

        //Send token and user details in the response
        res.status(200).json({status: "success", message: "User logged in successfully", token: token,});
    }
    catch(err){
        console.log(err);
        res.status(500).send('Internal Server Error');
    }
}