# Copyright © 2007 Chris Guidry <chrisguidry@gmail.com>
#
# This file is part of OFX for Ruby.
# 
# OFX for Ruby is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
# 
# OFX for Ruby is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

module OFX
    class Status       
        def self.from_ofx_102_hash(status_hash)
            return OFX::Status.from_numerical_code_severity_and_message(status_hash['CODE'].to_i,
                                                                        case status_hash['SEVERITY']
                                                                            when 'INFO' then :information
                                                                            when 'WARN' then :warning
                                                                            when 'ERROR' then :error
                                                                        end,
                                                                        status_hash['MESSAGE'])
        end
    end
end