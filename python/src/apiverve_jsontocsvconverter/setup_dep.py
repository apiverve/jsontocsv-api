from setuptools import setup, find_packages

setup(
    name='apiverve_jsontocsvconverter',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='JSON to CSV Converter is a powerful tool for converting JSON arrays into CSV format. It supports custom delimiters, header inclusion, and proper escaping of special characters.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/jsontocsv?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
