import { render, fireEvent } from '@testing-library/react'
import TaskItem from './TaskItem';

test('should render name', () => {
    const container = render(<TaskItem name={'test task'} handleClick={jest.fn()} />);

    const element = container.getByText('test task');
    expect(element.tagName).toBe('LI')
    expect(element).toBeValid();
});

test('should render "Task complete" when done is true', () => {
    const container = render(<TaskItem name={'test task'} done={true} handleClick={jest.fn()} />);

    const element = container.getByText((innerText) => {
        return innerText.includes('Task complete');
    });

    expect(element).toBeValid();
});

test('should call handleClick when clicked', () => {
    // let called = false;
    // const handleClick = () => { called = true; }
    const handleClick = jest.fn();
    const rendered = render(<TaskItem name={'test task'} handleClick={handleClick} />);

    const element = rendered.getByText('test task');
    fireEvent.click(element)

    expect(handleClick).toHaveBeenCalledTimes(1);
});

test('should call handleClick when done is true', () => {
    const mockFunction = jest.fn();
    const { rerender } = render(<TaskItem name={'test task'} done={false} handleClick={mockFunction} />);

    expect(mockFunction).not.toHaveBeenCalled();

    rerender(<TaskItem name={'test task'} done={true} handleClick={mockFunction} />)

    expect(mockFunction).toHaveBeenCalled();
});