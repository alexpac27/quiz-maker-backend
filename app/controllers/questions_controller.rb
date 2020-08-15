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
        quiz = Quiz.find_by(id: params[:id])
        quiz.destroy
    end 

    def create
        # byebug
        question = Question.create!(question_params)
        render json: question
    end

    private

    def question_params
        params.permit(:category,:difficulty,:question,:correct_answer,:incorrect_answers)
    end
end
