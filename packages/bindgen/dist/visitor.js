"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const isIterable = (object) => 
//@ts-ignore
object != null && typeof object[Symbol.iterator] === "function";
/**
 * Top level visitor that will expect an implemented _visit function to visit
 * a single node and then provides a generic function for collections of nodes
 * and will visit each member of the collection.
 */
class AbstractVisitor {
    visit(node) {
        if (node == null)
            return;
        if (node instanceof Array) {
            node.map((node) => { this.visit(node); });
        }
        else if (node instanceof Map) {
            for (let [key, _node] of node.entries()) {
                this.visit(_node);
            }
            //@ts-ignore Need a better way to test type
        }
        else if (isIterable(node)) {
            //TODO: Find better way to test if iterable
            //@ts-ignore is iterable
            for (let _node of node) {
                this.visit(_node);
            }
        }
        else {
            //@ts-ignore Node is not iterable.
            this._visit(node);
        }
    }
}
exports.AbstractVisitor = AbstractVisitor;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlzaXRvci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uL3NyYy92aXNpdG9yLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7O0FBR0EsTUFBTSxVQUFVLEdBQUcsQ0FBQyxNQUFjLEVBQVcsRUFBRTtBQUM3QyxZQUFZO0FBQ1osTUFBTSxJQUFJLElBQUksSUFBSSxPQUFPLE1BQU0sQ0FBQyxNQUFNLENBQUMsUUFBUSxDQUFDLEtBQUssVUFBVSxDQUFDO0FBRWhFOzs7O0dBSUc7QUFDTCxNQUFzQixlQUFlO0lBQ25DLEtBQUssQ0FBQyxJQUEwQjtRQUM5QixJQUFJLElBQUksSUFBSSxJQUFJO1lBQUUsT0FBTztRQUN6QixJQUFJLElBQUksWUFBWSxLQUFLLEVBQUU7WUFDekIsSUFBSSxDQUFDLEdBQUcsQ0FBQyxDQUFDLElBQU8sRUFBUSxFQUFFLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1NBQ3BEO2FBQU0sSUFBSSxJQUFJLFlBQVksR0FBRyxFQUFFO1lBQzlCLEtBQUssSUFBSSxDQUFDLEdBQUcsRUFBRSxLQUFLLENBQUMsSUFBSSxJQUFJLENBQUMsT0FBTyxFQUFFLEVBQUU7Z0JBQ3ZDLElBQUksQ0FBQyxLQUFLLENBQUMsS0FBSyxDQUFDLENBQUM7YUFDbkI7WUFDRCwyQ0FBMkM7U0FDNUM7YUFBTSxJQUFJLFVBQVUsQ0FBQyxJQUFJLENBQUMsRUFBRTtZQUN6QiwyQ0FBMkM7WUFDN0Msd0JBQXdCO1lBQ3hCLEtBQUssSUFBSSxLQUFLLElBQUksSUFBSSxFQUFFO2dCQUNwQixJQUFJLENBQUMsS0FBSyxDQUFDLEtBQUssQ0FBQyxDQUFDO2FBQ3JCO1NBQ0Y7YUFBTTtZQUNMLGtDQUFrQztZQUNsQyxJQUFJLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxDQUFDO1NBQ25CO0lBQ0gsQ0FBQztDQUdGO0FBdkJELDBDQXVCQyIsInNvdXJjZXNDb250ZW50IjpbIlxuZXhwb3J0IHR5cGUgQ29sbGVjdGlvbjxUPiA9IFQgfCBUW10gfCBNYXA8c3RyaW5nLCBUIHwgVFtdIHwgSXRlcmFibGU8VD4+IHwgSXRlcmFibGU8VD47XG5cbmNvbnN0IGlzSXRlcmFibGUgPSAob2JqZWN0OiBvYmplY3QpOiBib29sZWFuID0+XG4gIC8vQHRzLWlnbm9yZVxuICBvYmplY3QgIT0gbnVsbCAmJiB0eXBlb2Ygb2JqZWN0W1N5bWJvbC5pdGVyYXRvcl0gPT09IFwiZnVuY3Rpb25cIjtcblxuICAvKipcbiAgICogVG9wIGxldmVsIHZpc2l0b3IgdGhhdCB3aWxsIGV4cGVjdCBhbiBpbXBsZW1lbnRlZCBfdmlzaXQgZnVuY3Rpb24gdG8gdmlzaXRcbiAgICogYSBzaW5nbGUgbm9kZSBhbmQgdGhlbiBwcm92aWRlcyBhIGdlbmVyaWMgZnVuY3Rpb24gZm9yIGNvbGxlY3Rpb25zIG9mIG5vZGVzXG4gICAqIGFuZCB3aWxsIHZpc2l0IGVhY2ggbWVtYmVyIG9mIHRoZSBjb2xsZWN0aW9uLlxuICAgKi9cbmV4cG9ydCBhYnN0cmFjdCBjbGFzcyBBYnN0cmFjdFZpc2l0b3I8VD4ge1xuICB2aXNpdChub2RlOiBDb2xsZWN0aW9uPFQ+IHwgbnVsbCk6IHZvaWQge1xuICAgIGlmIChub2RlID09IG51bGwpIHJldHVybjtcbiAgICBpZiAobm9kZSBpbnN0YW5jZW9mIEFycmF5KSB7XG4gICAgICBub2RlLm1hcCgobm9kZTogVCk6IHZvaWQgPT4geyB0aGlzLnZpc2l0KG5vZGUpOyB9KTtcbiAgICB9IGVsc2UgaWYgKG5vZGUgaW5zdGFuY2VvZiBNYXApIHtcbiAgICAgIGZvciAobGV0IFtrZXksIF9ub2RlXSBvZiBub2RlLmVudHJpZXMoKSkge1xuICAgICAgICB0aGlzLnZpc2l0KF9ub2RlKTtcbiAgICAgIH1cbiAgICAgIC8vQHRzLWlnbm9yZSBOZWVkIGEgYmV0dGVyIHdheSB0byB0ZXN0IHR5cGVcbiAgICB9IGVsc2UgaWYgKGlzSXRlcmFibGUobm9kZSkpIHtcbiAgICAgICAgLy9UT0RPOiBGaW5kIGJldHRlciB3YXkgdG8gdGVzdCBpZiBpdGVyYWJsZVxuICAgICAgLy9AdHMtaWdub3JlIGlzIGl0ZXJhYmxlXG4gICAgICBmb3IgKGxldCBfbm9kZSBvZiBub2RlKSB7XG4gICAgICAgICAgdGhpcy52aXNpdChfbm9kZSk7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vQHRzLWlnbm9yZSBOb2RlIGlzIG5vdCBpdGVyYWJsZS5cbiAgICAgIHRoaXMuX3Zpc2l0KG5vZGUpO1xuICAgIH1cbiAgfVxuXG4gIHByb3RlY3RlZCBhYnN0cmFjdCBfdmlzaXQobm9kZTogVCk6IHZvaWQ7XG59XG4iXX0=