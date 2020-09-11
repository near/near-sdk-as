"use strict";
const visitor_as_1 = require("visitor-as");
const as_1 = require("visitor-as/as");
class ExportAs extends visitor_as_1.FunctionDecorator {
    visitFunctionDeclaration(node) {
        let decl = node.decorators[0];
        if (decl.name.toString() == this.name) {
            if (!decl.args || decl.args.length == 0) {
                throw new Error("exportAs expects at least on arguement");
            }
            let newNameArg = decl.args[0];
            if (newNameArg instanceof as_1.IdentifierExpression) {
                let newName = newNameArg.text;
                node.name.text = newName;
                return;
            }
            throw new Error("exportAs requiers a constant literal filename");
        }
    }
    get name() {
        return "exportAs";
    }
}
module.exports = visitor_as_1.registerDecorator(new ExportAs());
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXhwb3J0QXMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvZXhwb3J0QXMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLDJDQUF5RztBQUN6RyxzQ0FBb0g7QUFFcEgsTUFBTSxRQUFTLFNBQVEsOEJBQWlCO0lBRXRDLHdCQUF3QixDQUFDLElBQXlCO1FBQ2hELElBQUksSUFBSSxHQUFHLElBQUksQ0FBQyxVQUFXLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDL0IsSUFBSSxJQUFJLENBQUMsSUFBSSxDQUFDLFFBQVEsRUFBRSxJQUFJLElBQUksQ0FBQyxJQUFJLEVBQUU7WUFDckMsSUFBSSxDQUFDLElBQUksQ0FBQyxJQUFJLElBQUksSUFBSSxDQUFDLElBQUksQ0FBQyxNQUFNLElBQUksQ0FBQyxFQUFFO2dCQUN2QyxNQUFNLElBQUksS0FBSyxDQUFDLHdDQUF3QyxDQUFDLENBQUM7YUFDM0Q7WUFDRCxJQUFJLFVBQVUsR0FBRyxJQUFJLENBQUMsSUFBSyxDQUFDLENBQUMsQ0FBQyxDQUFDO1lBQy9CLElBQUksVUFBVSxZQUFZLHlCQUFvQixFQUFFO2dCQUM5QyxJQUFJLE9BQU8sR0FBRyxVQUFVLENBQUMsSUFBSSxDQUFDO2dCQUM5QixJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksR0FBRyxPQUFPLENBQUM7Z0JBQ3pCLE9BQU07YUFDUDtZQUNELE1BQU0sSUFBSSxLQUFLLENBQUMsK0NBQStDLENBQUMsQ0FBQztTQUNsRTtJQUNILENBQUM7SUFHRCxJQUFJLElBQUk7UUFDTixPQUFPLFVBQVUsQ0FBQztJQUNwQixDQUFDO0NBRUY7QUFFRCxpQkFBUyw4QkFBaUIsQ0FBQyxJQUFJLFFBQVEsRUFBRSxDQUFDLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyB1dGlscywgVHJhbnNmb3JtVmlzaXRvciwgU2ltcGxlUGFyc2VyLCByZWdpc3RlckRlY29yYXRvciwgRnVuY3Rpb25EZWNvcmF0b3IgfSBmcm9tIFwidmlzaXRvci1hc1wiO1xuaW1wb3J0IHsgTm9kZSwgRXhwcmVzc2lvbiwgUGFyc2VyLCBDYWxsRXhwcmVzc2lvbiwgSWRlbnRpZmllckV4cHJlc3Npb24sIEZ1bmN0aW9uRGVjbGFyYXRpb24gfSBmcm9tIFwidmlzaXRvci1hcy9hc1wiO1xuXG5jbGFzcyBFeHBvcnRBcyBleHRlbmRzIEZ1bmN0aW9uRGVjb3JhdG9yIHtcblxuICB2aXNpdEZ1bmN0aW9uRGVjbGFyYXRpb24obm9kZTogRnVuY3Rpb25EZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIGxldCBkZWNsID0gbm9kZS5kZWNvcmF0b3JzIVswXTtcbiAgICBpZiAoZGVjbC5uYW1lLnRvU3RyaW5nKCkgPT0gdGhpcy5uYW1lKSB7XG4gICAgICBpZiAoIWRlY2wuYXJncyB8fCBkZWNsLmFyZ3MubGVuZ3RoID09IDApIHtcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKFwiZXhwb3J0QXMgZXhwZWN0cyBhdCBsZWFzdCBvbiBhcmd1ZW1lbnRcIik7XG4gICAgICB9XG4gICAgICBsZXQgbmV3TmFtZUFyZyA9IGRlY2wuYXJncyFbMF07XG4gICAgICBpZiAobmV3TmFtZUFyZyBpbnN0YW5jZW9mIElkZW50aWZpZXJFeHByZXNzaW9uKSB7XG4gICAgICAgIGxldCBuZXdOYW1lID0gbmV3TmFtZUFyZy50ZXh0O1xuICAgICAgICBub2RlLm5hbWUudGV4dCA9IG5ld05hbWU7XG4gICAgICAgIHJldHVyblxuICAgICAgfVxuICAgICAgdGhyb3cgbmV3IEVycm9yKFwiZXhwb3J0QXMgcmVxdWllcnMgYSBjb25zdGFudCBsaXRlcmFsIGZpbGVuYW1lXCIpO1xuICAgIH1cbiAgfVxuXG5cbiAgZ2V0IG5hbWUoKTogc3RyaW5nIHtcbiAgICByZXR1cm4gXCJleHBvcnRBc1wiO1xuICB9XG5cbn1cblxuZXhwb3J0ID0gcmVnaXN0ZXJEZWNvcmF0b3IobmV3IEV4cG9ydEFzKCkpO1xuIl19