function s = my_nansum(A,varargin)

A(isnan(A)) = 0;
s= sum(A,varargin{:});
end