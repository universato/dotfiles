import subprocess

def get_git_branches():
    # git branch --vv コマンドを実行し、出力を取得
    result = subprocess.run(["git", "branch", "-vv", "--color=always"], capture_output=True, text=True)
    # 出力からブランチのリストを生成
    branches = [line for line in result.stdout.split('\n') if line]
    # 現在のブランチ(スタリスク付き)を先頭にする
    current_branch_index = next((i for i, branch in enumerate(branches) if branch.startswith("*")), None)
    if current_branch_index is not None:
        current_branch = branches.pop(current_branch_index)
        branches.insert(0, current_branch)
    # print(branches)
    return branches

def switch_branch():
    branches = get_git_branches()
    if not branches:
        print("branches: 404 Not Found")
        return

    # ブランチを列挙
    for i, branch in enumerate(branches, start=0):
        print(f"{i}: {branch}")

    try:
        i = int(input())
        # choice = int(input("切り替えたいブランチの番号を入力せよ (現在ブランチの維持には0): "))
        if i == 0:
            current_branch = branches[i].split()[1]
            print(f"\tAlready on {current_branch}")
        elif 1 <= i < len(branches):
            selected_branch_name = branches[i].split()[0]
            print(f"\tgit switch {selected_branch_name}")
            subprocess.run(["git", "switch", selected_branch_name])
        else:
            print("無効な数字です。")
    except ValueError:
        print("数字を入力してください。")

if __name__ == "__main__":
    switch_branch()
