#!/bin/bash

# ----------CUCUMBER INIT------------ #
echo "----------CUCUMBER PHASE------------"
echo "Generating cucumber directory structure"
mkdir -p features/step_definitions
mkdir -p features/support

echo "Generating a placeholder step"
touch features/step_definitions/"$(basename `pwd`)_steps.rb"

echo "Generating the env.rb file"
echo '$: << File.expand_path("../../lib", File.dirname(__FILE__))' > features/support/env.rb
echo "require '$(basename `pwd`)'" >> features/support/env.rb

echo "Generating sample feature"
echo "Feature: Wip Feature
   @wip
   Scenario: Sample Scenario
    Given the world
    When your whishes come truth
    Then you are happy" > features/sample.feature

echo "Cucumber file structure generated successfully."

# ----------HENRY INIT------------ #
echo "----------HENRY INIT------------"
echo "Generating henry_context yaml with cucumber sample"
echo "tasks:
- name: WIP 
  class_name: Henry::Task::CucumberTask
  options:
    tags:
      - wip" > henry-context.yml

echo "Generating henry directory structure"
mkdir -p in_henry
mkdir -p hints_henry

echo "Generating henry ins and hints placeholders/samples"
echo "[{"all":{"params":"values"}}]" > in_henry/in.henry.wip
echo "{"tasks":["WIP"]}" > in_henry/hints.henry.wip

