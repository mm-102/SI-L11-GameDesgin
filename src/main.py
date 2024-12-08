import clips
import os
import tkinter as tk

CONSTRUCT = os.path.dirname(__file__)+"/../constructs/"

widget = tk.Tk()
widget.geometry("400x600")


question_var = tk.StringVar(value="Question")
question_label = tk.Label(widget, textvariable=question_var, font=('calibre',10, 'bold'))
question_label.pack()

answer_var = tk.StringVar(widget)
answer_buttons_frame = tk.Frame(widget)
answer_buttons_frame.pack()

env = clips.Environment()
env.clear()

env.load(CONSTRUCT+"facts.clp")
env.load(CONSTRUCT+"rules.clp")
env.reset()

def next_action() -> None:
    env.run()
    for fact in env.facts():
        template_name = fact.template.name

        if template_name == "decision":
            question_var.set(tuple(fact))
            break

        if template_name == "question":
            request_answer(dict(fact))
            fact.retract()
            break

def answer_question(value: str) -> None:
    global answer_buttons_frame
    env.assert_string(f"(answer {value})")
    answer_buttons_frame.destroy()
    answer_buttons_frame = tk.Frame(widget)
    answer_buttons_frame.pack()
    next_action()

def request_answer(question_fact: dict[str, str | tuple]) -> None:
    options = (question_fact[key] for key in question_fact if key.startswith("answer") and question_fact[key])
    question_var.set(question_fact["display"])

    def answer_command(arg: str):
        return lambda: answer_question(arg)
    
    for option in options:
        button = tk.Button(answer_buttons_frame, text=option[0], command=answer_command(option[1]))
        button.pack()

next_action()
widget.mainloop()