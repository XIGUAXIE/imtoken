.class Lproguard/ftsafe/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lproguard/ftsafe/a/a;


# direct methods
.method constructor <init>(Lproguard/ftsafe/a/a;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/a/c;->a:Lproguard/ftsafe/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/a/c;->a:Lproguard/ftsafe/a/a;

    invoke-static {v0}, Lproguard/ftsafe/a/a;->b(Lproguard/ftsafe/a/a;)Landroid/widget/Button;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    iget-object v1, p0, Lproguard/ftsafe/a/c;->a:Lproguard/ftsafe/a/a;

    invoke-static {v1}, Lproguard/ftsafe/a/a;->a(Lproguard/ftsafe/a/a;)I

    move-result v1

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
