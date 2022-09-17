1. `File::path` is a class method and `File#path` is an instance method. The instance method can be called on an instance of the File class to get its path as a string. The class method can be called on the class itself.
2. `Date::civil` creates a new date object. Equivalent to `Date::new`. Output:
```
# => -4712-01-01
# => 2016-01-01
# => 2016-05-01
# => 2016-05-13
```
3. `# => [4, 5, 3, 6]` First 4 is assigned to a; 6 to d, then 5 to b. Left to right by precedence of lacking default value.
4. `a.bsearch { |x| x > 8 }`
5. 
```
# => index error
# => beats me
# => 14
```
6. `# => 5, 8
7. puts s.public_methods(false).inspect
8. puts a.min(2)
9. https://docs.ruby-lang.org/en/3.1/Psych.html#method-c-load_file