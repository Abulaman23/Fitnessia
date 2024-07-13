const db = require('../db/db');
const bcrypt = require('bcrypt');
const mongoose = require('mongoose');


const {Schema} = mongoose; //Destructuring assignment

const UserSchema = new Schema({
    email: {
        type: String,
        required: [true, 'Email is required!'],
        unique: true,
        lowercase: true,
        match: [/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/, 'Please fill a valid email address'],
    },
    password: {
        type: String,
        required: [true, 'Password is required!'],
    },
    age: {
        type: Number,
        required: [true, 'Age is required!'],
    },
    gender: {
        type: String,
        enum: ['male','female','other'],
        required: [true, 'Gender is required!'],
    },
    height: {
        type: Number,
        required: [true, 'Height is required!'],
    },
    weight: {
        type: Number,
        required: [true, 'Weight is required'],
    },
    goal: {
        type: String,
        required: [true, 'Goal is required'],
    },
    activity: {
        type: String,
        required: [true, 'Activity level is required'],
    },
}, {timestamps: true}); //timestamps: true adds createAt and updateAt fields to the schema

UserSchema.pre('save', async function(next){
    //Hash the password before saving the user model
    var user = this;
    if(!user.isModified('password')){
        return next();
    }
    try{
        const salt = await bcrypt.genSalt(10); //Generate a salt used for encrypting password
        const hash = await bcrypt.hash(user.password, salt); //Hash the password with the salt
        user.password = hash; //Replace the plain text password with the hash
        next();
    }
    catch(err){
        console.log(err);
        next(err);
    }
});

UserSchema.methods.comparePassword = async function(password){
    //Compare the plain text password with the hash stored in the databse
    try{
        console.log("password", this,password);

        const isValid = await bcrypt.compare(password, this.password);
        return isValid;
    }
    catch(err){
        console.log(err);
        return false;
    }
};


const UserModel = db.model('User', UserSchema);
module.exports = UserModel; //Export the model