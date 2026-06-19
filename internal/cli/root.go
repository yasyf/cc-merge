// Package cli builds the cobra command tree.
package cli

import (
	"github.com/spf13/cobra"

	"github.com/yasyf/cc-merge/internal/version"
)

// NewRootCmd builds the root command and registers its subcommands.
func NewRootCmd() *cobra.Command {
	root := &cobra.Command{
		Use:           "cc-merge",
		Short:         "Merge queue for git worktrees with finished Claude outputs.",
		Version:       version.String(),
		SilenceUsage:  true,
		SilenceErrors: true,
	}
	root.SetVersionTemplate("{{.Version}}\n")
	root.AddCommand(newHelloCmd())
	return root
}
