class QuizzesController < ApplicationController

    def index
        @quizzes = Quiz.all 
        render json: @quizzes, include: :question
    end

    def show
        @quiz = Quiz.find_by(id:params[:id])
        render json: @quiz, include: :question
    end

    def destroy 
        quiz = Quiz.find_by(id: params[:id])
        quiz.destroy
    end 

    def create
        quiz = Quiz.create!(quiz_item_params)
        render json: quiz, include: :question
    end

    private

    def quiz_item_params
        params.require(:quiz).permit(:user_id, :question_id,:name)
    end

end
