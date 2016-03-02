#Project: Tournament Results  - [Yana Kesala]


##Requirements

This project requires the user to set up a PostgreSQL database. Udacity provides a Vagrant config [here](https://www.udacity.com/course/viewer#!/c-nd004/l-3532028970/m-3631428767).

Before you can execute the Python code, the database must first be built using psql. Instructions in the next section.


##How to Run Project

* Navigate to the folder you downloaded, ensuring that any zipped files are unzipped. 
* Ensure all downloaded files are contained in the same folder.
* Using the Udacity-provided config, navigate to the VM (should be in the full-stack-nanodegree-vm/tournament directory) and power on and and sign into the machine.
* Navigate to /vagrant/tournament.
* To initially create the database, run the command `psql` to open up the psql command line interface.
* Then import the database using the command `\i tournament.sql`.
* xit the psql CLI by using command `\q`.
* From the command line (should look like vagrant@vagrant-ubuntu-trusty-32:/$)`python tournament_test.py` to test the database. 
* The output from execution of tournament_test.py should end with "Success! All tests pass!".