function cb = colorbarpos(ax, pos, vh)
%COLORBARPOS Adds colorbar to axis in specified location
%
% cb = colorbarpos(ax, pos)
% cb = colorbarpos(ax, pos, vh)
%
% This function adds a colorbar associated with the specified axis without
% changing the position of the axis.  The colorbar can be placed anywhere
% in the current figure.
%
% Input variables:
%
%   ax:     peer axis
%
%   pos:    position of new colorbar, in current figure units, [left bottom
%           width height]
%
%   vh:     string indicating whether colorbar gradient is vertical ('v')
%           or horizontal ('h').  Default is 'v'.
%
% Output variables:
%
%   cb:     handle of colorbar

% Copyright 2008 Kelly Kearney

if nargin == 2
    vh = 'v';
end

axpos = get(ax, 'Position');

if strcmp(vh, 'v')
    cb = colorbar('peer', ax, 'location', 'eastoutside');
elseif strcmp(vh, 'h')
    cb = colorbar('peer', ax, 'location', 'northoutside');
end

set(ax, 'position', axpos);
set(cb, 'position', pos);