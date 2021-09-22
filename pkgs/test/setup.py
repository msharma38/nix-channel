from setuptools import setup

setup(
    name='myapp',
    version='0.1',
    py_modules=['testapp'],
    entry_points={
        'console_scripts': ['testapp = testapp:run']
    },
)
