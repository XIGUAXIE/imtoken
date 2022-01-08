.class Lcmb/pb/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# instance fields
.field final synthetic a:Lcmb/pb/ui/PBKeyboardActivity;


# direct methods
.method constructor <init>(Lcmb/pb/ui/PBKeyboardActivity;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 4

    iget-object p2, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p2}, Lcmb/pb/ui/PBKeyboardActivity;->g(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    iget-object v0, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->g(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    const/4 v1, -0x3

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->a(Lcmb/pb/ui/PBKeyboardActivity;)V

    return-void

    :cond_0
    const/4 v1, -0x5

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_15

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_15

    if-lez v0, :cond_15

    add-int/lit8 p1, v0, -0x1

    invoke-interface {p2, p1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->h(Lcmb/pb/ui/PBKeyboardActivity;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-static {}, Lcmb/pb/ui/PBKeyboardActivity;->e()Lcmb/pb/ui/cmbwidget/e;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-static {}, Lcmb/pb/ui/PBKeyboardActivity;->e()Lcmb/pb/ui/cmbwidget/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcmb/pb/ui/cmbwidget/e;->a(I)V

    goto/16 :goto_8

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;

    move-result-object p1

    sget-object v0, Lcmb/pb/ui/f;->b:Lcmb/pb/ui/f;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->j(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-static {p1, v0}, Lcmb/pb/ui/PBKeyboardActivity;->a(Lcmb/pb/ui/PBKeyboardActivity;Landroid/inputmethodservice/Keyboard;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;

    move-result-object p1

    iget-object v0, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->j(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    sget-object v0, Lcmb/pb/ui/f;->b:Lcmb/pb/ui/f;

    :goto_1
    invoke-static {p1, v0}, Lcmb/pb/ui/PBKeyboardActivity;->a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V

    goto/16 :goto_8

    :cond_3
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;

    move-result-object p1

    sget-object v0, Lcmb/pb/ui/f;->j:Lcmb/pb/ui/f;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->k(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-static {p1, v0}, Lcmb/pb/ui/PBKeyboardActivity;->a(Lcmb/pb/ui/PBKeyboardActivity;Landroid/inputmethodservice/Keyboard;)V

    :goto_2
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;

    move-result-object p1

    iget-object v0, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->k(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    sget-object v0, Lcmb/pb/ui/f;->j:Lcmb/pb/ui/f;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;

    move-result-object p1

    sget-object v0, Lcmb/pb/ui/f;->g:Lcmb/pb/ui/f;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;

    move-result-object p1

    iget-object v0, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->l(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    sget-object v0, Lcmb/pb/ui/f;->h:Lcmb/pb/ui/f;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;

    move-result-object p1

    sget-object v0, Lcmb/pb/ui/f;->h:Lcmb/pb/ui/f;

    if-ne p1, v0, :cond_15

    goto :goto_3

    :cond_6
    const/4 v1, -0x2

    if-ne p1, v1, :cond_c

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;

    move-result-object p1

    sget-object v0, Lcmb/pb/ui/f;->b:Lcmb/pb/ui/f;

    if-ne p1, v0, :cond_7

    :goto_3
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;

    move-result-object p1

    iget-object v0, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->m(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    sget-object v0, Lcmb/pb/ui/f;->g:Lcmb/pb/ui/f;

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;

    move-result-object p1

    sget-object v0, Lcmb/pb/ui/f;->g:Lcmb/pb/ui/f;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;

    move-result-object p1

    sget-object v0, Lcmb/pb/ui/f;->h:Lcmb/pb/ui/f;

    if-ne p1, v0, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;

    move-result-object p1

    sget-object v0, Lcmb/pb/ui/f;->f:Lcmb/pb/ui/f;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->b(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->c(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/app/Activity;

    move-result-object p1

    const-string/jumbo v0, "string"

    const-string v1, "cmbkb_back"

    invoke-static {p1, v0, v1}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-virtual {v0}, Lcmb/pb/ui/PBKeyboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->b(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->b(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->n(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_9
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;

    move-result-object p1

    sget-object v0, Lcmb/pb/ui/f;->i:Lcmb/pb/ui/f;

    if-ne p1, v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;

    move-result-object p1

    sget-object v0, Lcmb/pb/ui/f;->j:Lcmb/pb/ui/f;

    if-ne p1, v0, :cond_b

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;

    move-result-object p1

    sget-object v0, Lcmb/pb/ui/f;->k:Lcmb/pb/ui/f;

    goto :goto_5

    :cond_c
    const/4 v1, -0x6

    if-ne p1, v1, :cond_f

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;

    move-result-object p1

    sget-object v0, Lcmb/pb/ui/f;->j:Lcmb/pb/ui/f;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;

    move-result-object p1

    iget-object v0, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->p(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    sget-object v0, Lcmb/pb/ui/f;->k:Lcmb/pb/ui/f;

    goto/16 :goto_1

    :cond_d
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;

    move-result-object p1

    sget-object v0, Lcmb/pb/ui/f;->k:Lcmb/pb/ui/f;

    if-ne p1, v0, :cond_e

    :goto_4
    goto/16 :goto_2

    :cond_e
    :goto_5
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;

    move-result-object p1

    iget-object v0, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->o(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    sget-object v0, Lcmb/pb/ui/f;->i:Lcmb/pb/ui/f;

    goto/16 :goto_1

    :cond_f
    const v1, 0xe04b

    if-ne p1, v1, :cond_10

    if-lez v0, :cond_15

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->g(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/EditText;

    move-result-object p1

    sub-int/2addr v0, v2

    :goto_6
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_8

    :cond_10
    const v1, 0xe04d

    if-ne p1, v1, :cond_11

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->g(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-ge v0, p1, :cond_15

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->g(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/EditText;

    move-result-object p1

    add-int/2addr v0, v2

    goto :goto_6

    :cond_11
    const/16 v1, 0x80

    const-string v3, "*"

    if-ne p1, v1, :cond_13

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->h(Lcmb/pb/ui/PBKeyboardActivity;)Z

    move-result p1

    const-string/jumbo v1, "\u20ac"

    if-eqz p1, :cond_12

    invoke-static {}, Lcmb/pb/ui/PBKeyboardActivity;->e()Lcmb/pb/ui/cmbwidget/e;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-static {}, Lcmb/pb/ui/PBKeyboardActivity;->e()Lcmb/pb/ui/cmbwidget/e;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcmb/pb/ui/cmbwidget/e;->a(ILjava/lang/String;)V

    goto :goto_7

    :cond_12
    invoke-interface {p2, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_8

    :cond_13
    iget-object v1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v1}, Lcmb/pb/ui/PBKeyboardActivity;->h(Lcmb/pb/ui/PBKeyboardActivity;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lcmb/pb/ui/PBKeyboardActivity;->e()Lcmb/pb/ui/cmbwidget/e;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-static {}, Lcmb/pb/ui/PBKeyboardActivity;->e()Lcmb/pb/ui/cmbwidget/e;

    move-result-object v1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcmb/pb/ui/cmbwidget/e;->a(ILjava/lang/String;)V

    :goto_7
    invoke-interface {p2, v0, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_8

    :cond_14
    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_15
    :goto_8
    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->q(Lcmb/pb/ui/PBKeyboardActivity;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcmb/pb/ui/PBKeyboardActivity;->f()Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_16

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KeyString"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p2, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p2}, Lcmb/pb/ui/PBKeyboardActivity;->r(Lcmb/pb/ui/PBKeyboardActivity;)I

    move-result p2

    if-lt p1, p2, :cond_16

    sget-object p1, Lcmb/pb/cmbsafe/b;->a:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcmb/pb/ui/c;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p1}, Lcmb/pb/ui/PBKeyboardActivity;->a(Lcmb/pb/ui/PBKeyboardActivity;)V

    :cond_16
    return-void
.end method

.method public onPress(I)V
    .locals 0

    return-void
.end method

.method public onRelease(I)V
    .locals 0

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method
