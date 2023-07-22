const mongoose = require('mongoose');

const TodoSchema = new mongoose.Schema({

    todo:{
        type: String,
        required: true,
    },
    created:{
        type: Date,
        default: Date.now()
    }
    
});

module.exports = new mongoose.model("Todo", TodoSchema);