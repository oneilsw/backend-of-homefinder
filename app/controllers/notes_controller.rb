class NotesController < ApplicationController
    def index 
        note = Note.all 
        render json: note
    end 

    def show
        note = Note.find(params[:id])
        render json: note
    end 

    def create
        note = Note.create(note_params)
        if note.valid?
            render json: note
        else
            render json: {error: note.errors.full_messages}
        end 
    end

    private

    def note_params
        params.permit(:text, :sender_id, :receiver_id)
    end
end
