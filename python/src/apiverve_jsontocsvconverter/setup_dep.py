from setuptools import setup, find_packages

setup(
    name='apiverve_jsontocsvconverter',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='JSON to CSV Converter converts an array of JSON objects into structured CSV text. It outputs formatted CSV content, detected column headers, and row counts, with support for custom delimiters like commas, tabs, or pipes.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/jsontocsv?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
