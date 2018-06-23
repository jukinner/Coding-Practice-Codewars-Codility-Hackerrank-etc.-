# Find Graph Weights for a Mapping Application in Ruby
# This guide walks through how to work with a mapping application and apply graph traversal techniques to find the distance for each weight in a graph.
# Summary
# Build a method that finds the distance for each weight in a directed graph.

# Exercise Description
# Given a route on map, that contains stops that have a weight measured between each stop, and the total distance, figure out the value that each weight represents.


require 'rspec'
# my answer
def route_generator distance, nodes
  weights = 0 
  nodes.each { |x| weights += x.last }
  p distance.to_f/weights
end

# Jordan's answer
# def route_generator route_total, nodes
#   route_total.to_f / nodes.inject(0) { |total, node| total += node.last }
# end

describe 'Graph weight analyzer' do
  it 'calculates the value of weight in a mapping application' do
    nodes = [[1, 3], [2, 3], [3, 4]]
    expect(route_generator 15, nodes).to eq(1.5)
  end
end





