import { render } from '@testing-library/react'
import Title from "./Title";

test('should display heading', () => {
    const container = render(<Title />);

    const element = container.getByText('Todo or not todo');
    expect(element.tagName).toBe('H4')
    expect(element).toBeValid();
});