'''The setup.py file is essential part of packaging and distributing Python Projects.It is used bby setup tools  to define the configurations of your projects, such as it s matadata,dependencies , and more '''


from setuptools import find_packages,setup
from typing import List



def get_requirements()->List[str]:
    """
    This fucntion returnslist of requirements 
    
    
    """
    requirement_lst:List[str]=[]

    try:
        with open('requirements.txt','r') as file:
            # Read lines from the file

            lines=file.readlines()
            ## Process Each line
            for line in lines:
                requirement=line.strip()
                ## ignore empty lines and -e.

                if requirement and requirement!='-e .':
                    requirement_lst.append(requirement)

    except FileNotFoundError:
        print("requirements.txt file is not found")



    return requirement_lst


setup(
    name="NetworkSecurity",
    version="0.0.1",
    author="Pradyuman sharma",
    author_email="ultragaming123q@gmail.com",
    packages=find_packages(),
    install_requires=get_requirements()


    
)









    