import clips
from clips.facts import ImpliedFact
import os
import tkinter as tk

# widget = tk.Tk()


CONSTRUCT = os.path.dirname(__file__)+"/../constructs/"

env = clips.Environment()
env.clear()

env.load(CONSTRUCT+"facts.clp")
env.load(CONSTRUCT+"rules.clp")
env.reset()

def answer_question(question_fact: dict[str, str | tuple]) -> None:
    options = (question_fact[key] for key in question_fact if key.startswith("answer") and question_fact[key])
    answers = {option[0]:option[1] for option in options}

    while True:
        print(question_fact["display"])
        print('\n'.join(answers.keys()))
        ans = input()
        if ans in answers:
            env.assert_string(f"(answer {answers[ans]})")
            return

        

decision_made = False
while not decision_made:
    env.run()
    for fact in env.facts():
        print(fact)
        template_name = fact.template.name

        if template_name == "decision":
            decision_made = True
            print(fact)
            break

        if template_name == "question":
            answer_question(dict(fact))
            fact.retract()


# widget.mainloop()