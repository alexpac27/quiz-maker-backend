class QuestionsController < ApplicationController

    def index
        @questions = Question.all
        render json: @questions
    end

    def show
        @question = Question.find_by(id:params[:id])
        render json: @question
    end

    def destroy 
        # byebug
        question = Question.find_by(id: params[:id])
        question.destroy
    end 

    def create
        question = Question.create!(question_params)
        render json: question
    end

    private

    def question_params
        params.permit(:category,:difficulty,:question,:correct_answer,:incorrect_answers)
    end
end
