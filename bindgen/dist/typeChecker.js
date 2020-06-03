"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.TypeChecker = void 0;
const visitor_as_1 = require("visitor-as");
const toIgnore = [
    "builtin",
    ".spec",
    "dataview",
    "date",
    "math",
    "number",
    "string",
    "typedarray",
    "bindings/Date",
    "bindings/Math"
];
let TypeChecker = /** @class */ (() => {
    class TypeChecker extends visitor_as_1.BaseVisitor {
        check(node) {
            let first = node.text.substring(0, node.text.indexOf("\n"));
            if (!(first.includes("ignore") ||
                toIgnore.some(n => node.normalizedPath.includes(n)))) {
                this.visit(node);
            }
        }
        static check(node) {
            const typeChecker = new TypeChecker();
            for (let i = 0; i < node.sources.length; i++) {
                typeChecker.check(node.sources[i]);
            }
        }
        visitTypeName(node) {
            const regex = /f32|f64/;
            if (regex.test(node.identifier.text)) {
                let range = node.range;
                let source = range.source;
                let line = source.lineAt(range.start);
                let lineStr = source.text.split("\n")[line - 1];
                TypeChecker.floatsFound.push("\n" + " ".repeat(4) + lineStr + "\n" +
                    "in " +
                    source.normalizedPath +
                    "(" +
                    line.toString() +
                    "," +
                    source.columnAt().toString() +
                    ")");
            }
        }
        static checkBinary(node) {
            const wat = node.toText();
            const regex = /f32|f64/;
            if (regex.test(wat)) {
                throw new Error("Floating point numbers are not allowed in smart contracts: Check\n" +
                    TypeChecker.floatsFound.join("\n"));
            }
        }
    }
    TypeChecker.floatsFound = [];
    return TypeChecker;
})();
exports.TypeChecker = TypeChecker;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHlwZUNoZWNrZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvdHlwZUNoZWNrZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7O0FBQ0EsMkNBQXlDO0FBTXpDLE1BQU0sUUFBUSxHQUFHO0lBQ2YsU0FBUztJQUNULE9BQU87SUFDUCxVQUFVO0lBQ1YsTUFBTTtJQUNOLE1BQU07SUFDTixRQUFRO0lBQ1IsUUFBUTtJQUNSLFlBQVk7SUFDWixlQUFlO0lBQ2YsZUFBZTtDQUNoQixDQUFDO0FBRUY7SUFBQSxNQUFhLFdBQVksU0FBUSx3QkFBVztRQUcxQyxLQUFLLENBQUMsSUFBWTtZQUNoQixJQUFJLEtBQUssR0FBRyxJQUFJLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDLEVBQUUsSUFBSSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQztZQUM1RCxJQUNFLENBQUMsQ0FDQyxLQUFLLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQztnQkFDeEIsUUFBUSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxjQUFjLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQ3BELEVBQ0Q7Z0JBQ0EsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQzthQUNsQjtRQUNILENBQUM7UUFFRCxNQUFNLENBQUMsS0FBSyxDQUFDLElBQVk7WUFDdkIsTUFBTSxXQUFXLEdBQUcsSUFBSSxXQUFXLEVBQUUsQ0FBQztZQUN0QyxLQUFLLElBQUksQ0FBQyxHQUFRLENBQUMsRUFBRSxDQUFDLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQyxNQUFNLEVBQUUsQ0FBQyxFQUFFLEVBQUU7Z0JBQ2pELFdBQVcsQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO2FBQ3BDO1FBQ0gsQ0FBQztRQUVELGFBQWEsQ0FBQyxJQUFjO1lBQzFCLE1BQU0sS0FBSyxHQUFtQixTQUFTLENBQUM7WUFDeEMsSUFBSSxLQUFLLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLEVBQUU7Z0JBQ3BDLElBQUksS0FBSyxHQUFHLElBQUksQ0FBQyxLQUFLLENBQUM7Z0JBQ3ZCLElBQUksTUFBTSxHQUFHLEtBQUssQ0FBQyxNQUFNLENBQUM7Z0JBQzFCLElBQUksSUFBSSxHQUFHLE1BQU0sQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLEtBQUssQ0FBQyxDQUFDO2dCQUN0QyxJQUFJLE9BQU8sR0FBRyxNQUFNLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQyxJQUFJLEdBQUcsQ0FBQyxDQUFDLENBQUM7Z0JBRWhELFdBQVcsQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUMxQixJQUFJLEdBQUcsR0FBRyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsR0FBRyxPQUFPLEdBQUcsSUFBSTtvQkFDbkMsS0FBSztvQkFDSixNQUFNLENBQUMsY0FBYztvQkFDdEIsR0FBRztvQkFDSCxJQUFJLENBQUMsUUFBUSxFQUFFO29CQUNmLEdBQUc7b0JBQ0gsTUFBTSxDQUFDLFFBQVEsRUFBRSxDQUFDLFFBQVEsRUFBRTtvQkFDNUIsR0FBRyxDQUNOLENBQUM7YUFDSDtRQUNILENBQUM7UUFFRCxNQUFNLENBQUMsV0FBVyxDQUFDLElBQVk7WUFDN0IsTUFBTSxHQUFHLEdBQUcsSUFBSSxDQUFDLE1BQU0sRUFBRSxDQUFDO1lBQzFCLE1BQU0sS0FBSyxHQUFtQixTQUFTLENBQUM7WUFDeEMsSUFBSSxLQUFLLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFO2dCQUNuQixNQUFNLElBQUksS0FBSyxDQUNiLG9FQUFvRTtvQkFDbEUsV0FBVyxDQUFDLFdBQVcsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQ3JDLENBQUM7YUFDSDtRQUNILENBQUM7O0lBbkRNLHVCQUFXLEdBQWEsRUFBRSxDQUFDO0lBb0RwQyxrQkFBQztLQUFBO0FBckRZLGtDQUFXIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgVHlwZU5hbWUsIE1vZHVsZSwgU291cmNlLCBQYXJzZXIgfSBmcm9tIFwidmlzaXRvci1hcy9hc1wiO1xuaW1wb3J0IHsgQmFzZVZpc2l0b3IgfSBmcm9tIFwidmlzaXRvci1hc1wiO1xuXG5kZWNsYXJlIGludGVyZmFjZSBSZWdFeHAge1xuICB0ZXN0KHM6IHN0cmluZyk6IGJvb2w7XG59XG5cbmNvbnN0IHRvSWdub3JlID0gW1xuICBcImJ1aWx0aW5cIixcbiAgXCIuc3BlY1wiLFxuICBcImRhdGF2aWV3XCIsXG4gIFwiZGF0ZVwiLFxuICBcIm1hdGhcIixcbiAgXCJudW1iZXJcIixcbiAgXCJzdHJpbmdcIixcbiAgXCJ0eXBlZGFycmF5XCIsXG4gIFwiYmluZGluZ3MvRGF0ZVwiLFxuICBcImJpbmRpbmdzL01hdGhcIlxuXTtcblxuZXhwb3J0IGNsYXNzIFR5cGVDaGVja2VyIGV4dGVuZHMgQmFzZVZpc2l0b3Ige1xuICBzdGF0aWMgZmxvYXRzRm91bmQ6IHN0cmluZ1tdID0gW107XG5cbiAgY2hlY2sobm9kZTogU291cmNlKTogdm9pZCB7XG4gICAgbGV0IGZpcnN0ID0gbm9kZS50ZXh0LnN1YnN0cmluZygwLCBub2RlLnRleHQuaW5kZXhPZihcIlxcblwiKSk7XG4gICAgaWYgKFxuICAgICAgIShcbiAgICAgICAgZmlyc3QuaW5jbHVkZXMoXCJpZ25vcmVcIikgfHxcbiAgICAgICAgdG9JZ25vcmUuc29tZShuID0+IG5vZGUubm9ybWFsaXplZFBhdGguaW5jbHVkZXMobikpXG4gICAgICApXG4gICAgKSB7XG4gICAgICB0aGlzLnZpc2l0KG5vZGUpO1xuICAgIH1cbiAgfVxuXG4gIHN0YXRpYyBjaGVjayhub2RlOiBQYXJzZXIpOiB2b2lkIHtcbiAgICBjb25zdCB0eXBlQ2hlY2tlciA9IG5ldyBUeXBlQ2hlY2tlcigpO1xuICAgIGZvciAobGV0IGk6IGkzMiA9IDA7IGkgPCBub2RlLnNvdXJjZXMubGVuZ3RoOyBpKyspIHtcbiAgICAgIHR5cGVDaGVja2VyLmNoZWNrKG5vZGUuc291cmNlc1tpXSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRUeXBlTmFtZShub2RlOiBUeXBlTmFtZSk6IHZvaWQge1xuICAgIGNvbnN0IHJlZ2V4OiBSZWdFeHAgPSA8UmVnRXhwPi9mMzJ8ZjY0LztcbiAgICBpZiAocmVnZXgudGVzdChub2RlLmlkZW50aWZpZXIudGV4dCkpIHtcbiAgICAgIGxldCByYW5nZSA9IG5vZGUucmFuZ2U7XG4gICAgICBsZXQgc291cmNlID0gcmFuZ2Uuc291cmNlO1xuICAgICAgbGV0IGxpbmUgPSBzb3VyY2UubGluZUF0KHJhbmdlLnN0YXJ0KTtcbiAgICAgIGxldCBsaW5lU3RyID0gc291cmNlLnRleHQuc3BsaXQoXCJcXG5cIilbbGluZSAtIDFdO1xuXG4gICAgICBUeXBlQ2hlY2tlci5mbG9hdHNGb3VuZC5wdXNoKFxuICAgICAgICBcIlxcblwiICsgXCIgXCIucmVwZWF0KDQpICsgbGluZVN0ciArIFwiXFxuXCIgK1xuICAgICAgICAgIFwiaW4gXCIgK1xuICAgICAgICAgICBzb3VyY2Uubm9ybWFsaXplZFBhdGggK1xuICAgICAgICAgIFwiKFwiICtcbiAgICAgICAgICBsaW5lLnRvU3RyaW5nKCkgK1xuICAgICAgICAgIFwiLFwiICtcbiAgICAgICAgICBzb3VyY2UuY29sdW1uQXQoKS50b1N0cmluZygpICtcbiAgICAgICAgICBcIilcIlxuICAgICAgKTtcbiAgICB9XG4gIH1cblxuICBzdGF0aWMgY2hlY2tCaW5hcnkobm9kZTogTW9kdWxlKSB7XG4gICAgY29uc3Qgd2F0ID0gbm9kZS50b1RleHQoKTtcbiAgICBjb25zdCByZWdleDogUmVnRXhwID0gPFJlZ0V4cD4vZjMyfGY2NC87XG4gICAgaWYgKHJlZ2V4LnRlc3Qod2F0KSkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICBcIkZsb2F0aW5nIHBvaW50IG51bWJlcnMgYXJlIG5vdCBhbGxvd2VkIGluIHNtYXJ0IGNvbnRyYWN0czogQ2hlY2tcXG5cIiArXG4gICAgICAgICAgVHlwZUNoZWNrZXIuZmxvYXRzRm91bmQuam9pbihcIlxcblwiKVxuICAgICAgKTtcbiAgICB9XG4gIH1cbn1cbiJdfQ==