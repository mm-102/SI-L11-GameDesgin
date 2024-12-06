import clips
import os

CONSTRUCT = os.path.dirname(__file__)+"/../constructs/"

env = clips.Environment()

env.load(CONSTRUCT+"rules.clp")
env.load(CONSTRUCT+"facts.clp")
env.reset()
env.run()