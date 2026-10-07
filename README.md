# Revue

### AI agents. Engineering workflows. One terminal.

Revue is an **open-source, terminal-native AI engineering workspace** that lets you connect your repositories, AI agents, models, and engineering tools — and use them together to automate software development workflows.

Instead of relying on a single AI for everything, Revue lets you **assign different agents to different tasks**, compose them into multi-step workflows, and add **human approval gates** wherever you want.

> 🚧 Revue is currently in **Beta**.

---

## ✨ Why Revue?

AI is great at individual engineering tasks.

But **real software development is a workflow**.

A typical pull request might look like:

```text
Pull Request
     │
     ▼
Code Review
     │
     ▼
Security Review
     │
     ▼
Human Approval
     │
     ▼
Fix Issues
     │
     ▼
Run Tests
     │
     ▼
Ready to Merge
```

Revue turns workflows like these into **AI-powered, repeatable processes**.

You decide:

- 🤖 Which agent handles each task
- 🧠 Which AI provider or model it uses
- 📦 Which repository it works on
- 🔀 What steps should happen next
- 👤 Where human approval is required

**Revue takes care of executing the workflow.**

---

## 🤖 AI Agents

Connect multiple AI agents and give each one a specific responsibility.

For example:

| Agent | Responsibility | Model |
|---|---|---|
| Code Reviewer | Review code quality | GPT |
| Security Reviewer | Find security issues | Claude |
| Fix Agent | Implement fixes | DeepSeek |
| Test Agent | Generate & run tests | Local Model |
| Documentation Agent | Update documentation | Custom Model |

Different tasks can use **different agents and different models**.

You're not locked into a single AI provider.

---

## 🔌 Bring Your Own AI

Revue supports multiple AI providers as well as custom models and endpoints.

Use the models you already work with — or connect your own.

### Supported

- OpenAI
- Anthropic
- DeepSeek
- Local models
- Custom AI endpoints
- Other supported providers

For example:

```text
PR Review        → Claude
Code Fixes       → DeepSeek
Test Generation  → Local Model
Documentation    → Custom Model
```

The goal is simple:

> **Use the right model for the right job.**

---

## 📦 Connect Your Repositories

Revue works with the repositories you already use.

### Currently supported

- GitHub Cloud
- Bitbucket Cloud

You can connect **multiple repositories** and use them across your workflows.

---

## 🔄 Workflows

Workflows are at the heart of Revue.

Create a workflow by defining a series of steps. Each step can have its own task and assigned agent.

### Example

```text
┌──────────────────────┐
│      PR Created      │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│     Review PR        │
│     Review Agent     │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│   Human Approval     │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│     Fix Issues       │
│      Fix Agent       │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│      Run Tests       │
│      Test Agent      │
└──────────┬───────────┘
           │
           ▼
        ✓ Done
```

Each step can use a different agent.

When a workflow reaches a point where human input is required, **Revue pauses and waits for you** before continuing.

---

## 👤 Human-in-the-Loop

Automation shouldn't mean giving AI unlimited control.

Revue lets workflows pause whenever human intervention is required.

For example:

```text
AI Review
    │
    ▼
Issues Found
    │
    ▼
┌─────────────────────────┐
│      Approve fixes?     │
│                         │
│  [ Approve ]  [ Reject ]│
└────────────┬────────────┘
             │
             ▼
         Fix Agent
```

You remain in control of important decisions.

**AI does the work. You decide where the boundaries are.**

---

## 🧩 Specialized Agents

Revue treats agents as **specialized workers**.

Instead of asking one AI to do everything:

```text
                    REVUE WORKFLOW
                           │
             ┌─────────────┴─────────────┐
             │                           │
             ▼                           ▼
      Review Agent                Security Agent
             │                           │
             └─────────────┬─────────────┘
                           │
                           ▼
                    Human Approval
                           │
                           ▼
                       Fix Agent
                           │
                           ▼
                       Test Agent
                           │
                           ▼
                          Done
```

Each agent has a clear responsibility.

This makes complex engineering workflows:

- Easier to build
- Easier to understand
- Easier to debug
- Easier to control
- Easier to extend

---

## 🧰 Engineering Integrations

Revue is designed to work with the tools already used in your engineering workflow.

You can connect services such as:

- GitHub
- Bitbucket
- Jira
- Confluence
- AI model providers
- Custom AI endpoints

More integrations are planned.

---

## 💻 Terminal Native

Revue lives in your **terminal**.

No browser dashboard required.

The TUI is designed to make AI workflows visible, interactive, and controllable without leaving your development environment.

```text
╭────────────────────────────────────────────╮
│ REVUE                                      │
├────────────────────────────────────────────┤
│                                            │
│  Workflow: PR Review                       │
│                                            │
│  ✓ Fetch PR                                │
│  ✓ Review code                             │
│  ● Waiting for approval                    │
│  ○ Fix issues                              │
│  ○ Run tests                               │
│                                            │
╰────────────────────────────────────────────╯
```

**Keyboard-first. Fast. Minimal.**

---

## ⚡ Example: AI-Powered PR Workflow

Imagine you've opened a pull request.

### Normally

```text
Open PR
   ↓
Read diff
   ↓
Review code
   ↓
Find issues
   ↓
Fix issues
   ↓
Run tests
   ↓
Review again
```

### With Revue

```text
        Pull Request
              │
              ▼
        Review Agent
              │
              ▼
       Human Approval
              │
              ▼
          Fix Agent
              │
              ▼
         Test Agent
              │
              ▼
            Done ✓
```

Different agents handle different parts of the process.

And **you decide where automation stops and human intervention begins.**

---

## 🔐 Your AI. Your Choice.

Revue doesn't force you to use a single AI provider.

Use the model that makes sense for each task.

```text
                       REVUE
                         │
              ┌──────────┴──────────┐
              │                     │
        Cloud Models          Local Models
              │                     │
        ┌─────┼─────┐               │
        │     │     │               │
       GPT  Claude DeepSeek         Qwen
```

You can also connect custom models and endpoints.

Your workflow should determine **which AI is best for the job** — not the other way around.

---

# 🚀 Installation

## Homebrew

```bash
brew install <your-homebrew-tap>/revue
```

Then start Revue:

```bash
revue
```

> Installation instructions may change during the Beta period.

---

# 🏁 Getting Started

Start Revue:

```bash
revue
```

Then:

1. Connect your code-hosting account.
2. Connect one or more repositories.
3. Connect your preferred AI provider.
4. Configure your agents.
5. Assign agents to tasks.
6. Create or select a workflow.
7. Run the workflow.
8. Approve actions whenever Revue asks for your input.

That's it.

---

# 🗺️ Roadmap

Revue is actively being developed.

## Coming Next

- [ ] Parallel agent execution
- [ ] Smarter workflow orchestration
- [ ] GitLab support
- [ ] More engineering integrations
- [ ] Reusable workflow templates
- [ ] Agent marketplace
- [ ] Local repository workflows
- [ ] More autonomous development workflows

---

# 💡 The Bigger Idea

Revue isn't trying to be another AI chat window.

The goal is to build a place where **AI agents can actually perform engineering work together**.

### Today

```text
Agent → Task
```

### The direction we're heading

```text
                    Engineering Goal
                           │
                           ▼
                    Revue Workflow
                           │
             ┌─────────────┼─────────────┐
             ▼             ▼             ▼
        Review Agent   Security Agent   Test Agent
             │             │             │
             └─────────────┼─────────────┘
                           │
                           ▼
                      Human Gate
                           │
                           ▼
                       Fix Agent
                           │
                           ▼
                       Deployment
```

The long-term vision is simple:

> **Tell Revue what you want done.**
>
> **Let specialized AI agents figure out how to get it done.**
>
> **Stay in control.**

---

# 🤝 Contributing

Revue is open source and contributions are welcome.

Ideas, bug reports, integrations, workflow templates, agent definitions, and improvements are all welcome.

### Found a bug?

Open an issue.

### Want to contribute?

Open a pull request.

Every contribution helps make Revue better.

---

# ⭐ Support Revue

If Revue is useful to you:

- ⭐ Star the repository
- 🐛 Report bugs
- 💡 Suggest features
- 🔧 Contribute code
- 📣 Share it with other developers

**Revue is free and open source.**

A GitHub star genuinely helps more developers discover the project.

---

<div align="center">

### Revue

**AI agents. Engineering workflows. One terminal.**

</div>
