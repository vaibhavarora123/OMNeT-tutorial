//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 


//
// TODO documentation
//
simple computer
{
    gates:
        input in;
        output out;
}

//
// TODO documentation
//
network netww
{
    submodules:
        computer1: computer {
            @display("p=96,109");
        }
        computer2: computer {
            @display("p=237,109");
        }
    connections:
        computer1.out --> computer2.in;
        computer2.out --> computer1.in;
}

