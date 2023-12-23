ensure_path('TEXINPUTS','tex/', '.');
ensure_path('LUAINPUTS','tex/', '.');

@default_files=("*.tex","*.md");
@default_excluded_files = ("*_content.md", "README.md", "readme.md");

$pdf_mode = 4;
$do_cd = 1;

use File::Basename;

my @exts = qw(.md .tex);

$lualatex= 'internal ptxbuild %P';

sub ptxbuild {
    $file = pop @_;
	my ($name, $dir, $ext) = fileparse($file, @exts);
	if ($ext eq ".md") {
		$return = system ("lualatex --shell-escape --jobname=$name '\\def\\MarkDownInputFile{$file}\\input{37c3-markdown-wrapper.tex}'");
    } else {
		$return = system ("lualatex @_ '$file'");
	}
    return $return;
}

