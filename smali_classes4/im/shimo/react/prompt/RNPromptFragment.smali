.class public Lim/shimo/react/prompt/RNPromptFragment;
.super Landroid/app/DialogFragment;
.source "RNPromptFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;
    }
.end annotation


# static fields
.field static final ARG_BUTTON_NEGATIVE:Ljava/lang/String; = "button_negative"

.field static final ARG_BUTTON_NEUTRAL:Ljava/lang/String; = "button_neutral"

.field static final ARG_BUTTON_POSITIVE:Ljava/lang/String; = "button_positive"

.field static final ARG_DEFAULT_VALUE:Ljava/lang/String; = "defaultValue"

.field static final ARG_ITEMS:Ljava/lang/String; = "items"

.field static final ARG_MESSAGE:Ljava/lang/String; = "message"

.field static final ARG_PLACEHOLDER:Ljava/lang/String; = "placeholder"

.field static final ARG_STYLE:Ljava/lang/String; = "style"

.field static final ARG_TITLE:Ljava/lang/String; = "title"

.field static final ARG_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mInputText:Landroid/widget/EditText;

.field private mListener:Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lim/shimo/react/prompt/RNPromptFragment;->mListener:Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;

    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    const-string v0, "style"

    .line 65
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "default"

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 69
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "shimo"

    const v3, 0x6856d56

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, -0x1

    :goto_2
    if-eqz v0, :cond_4

    .line 74
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_3

    .line 71
    :cond_4
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v6, Lim/shimo/react/prompt/R$style;->ShimoAlertDialogStyle:I

    invoke-direct {v0, p1, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_3
    const-string v6, "title"

    .line 77
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v6, "button_positive"

    .line 79
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 80
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_5
    const-string v6, "button_negative"

    .line 82
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 83
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_6
    const-string v6, "button_neutral"

    .line 85
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 86
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_7
    const-string v6, "message"

    .line 90
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 91
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_8
    const-string v6, "items"

    .line 94
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 95
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 98
    :cond_9
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 103
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    if-eq v7, v3, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v1, -0x1

    :goto_5
    if-eqz v1, :cond_c

    .line 108
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    goto :goto_6

    .line 105
    :cond_c
    sget p1, Lim/shimo/react/prompt/R$layout;->edit_text:I

    const/4 v1, 0x0

    invoke-virtual {v6, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    :goto_6
    const-string p1, "type"

    .line 113
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x80001

    const/4 v6, 0x3

    if-eqz v2, :cond_11

    .line 114
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_7

    :sswitch_0
    const-string v2, "secure-text"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_8

    :sswitch_1
    const-string v2, "plain-text"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 v4, 0x4

    goto :goto_8

    :sswitch_2
    const-string v2, "phone-pad"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 v4, 0x3

    goto :goto_8

    :sswitch_3
    const-string v2, "numeric"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 v4, 0x1

    goto :goto_8

    :sswitch_4
    const-string v2, "email-address"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 v4, 0x2

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v4, -0x1

    :goto_8
    if-eqz v4, :cond_10

    if-eq v4, v8, :cond_f

    if-eq v4, v7, :cond_e

    if-eq v4, v6, :cond_f

    goto :goto_9

    :cond_e
    const/16 v3, 0x21

    goto :goto_9

    :cond_f
    const/4 v3, 0x3

    goto :goto_9

    :cond_10
    const/16 v3, 0x81

    .line 135
    :cond_11
    :goto_9
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    const-string p1, "defaultValue"

    .line 137
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 138
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 140
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 142
    invoke-virtual {v1, p1, p1}, Landroid/widget/EditText;->setSelection(II)V

    :cond_12
    const-string p1, "placeholder"

    .line 146
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 147
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_13
    const/16 v9, 0x32

    const/16 v10, 0xf

    const/16 v11, 0x32

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, v1

    .line 149
    invoke-virtual/range {v7 .. v12}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 151
    iput-object v1, p0, Lim/shimo/react/prompt/RNPromptFragment;->mInputText:Landroid/widget/EditText;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x77d8913d -> :sswitch_4
        -0x773be4f3 -> :sswitch_3
        -0x3d67044c -> :sswitch_2
        0x3a261b50 -> :sswitch_1
        0x51a69dc3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 166
    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptFragment;->mListener:Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lim/shimo/react/prompt/RNPromptFragment;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->onConfirm(ILjava/lang/String;)V

    .line 169
    :cond_0
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 157
    invoke-virtual {p0}, Lim/shimo/react/prompt/RNPromptFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lim/shimo/react/prompt/RNPromptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lim/shimo/react/prompt/RNPromptFragment;->createDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptFragment;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 174
    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptFragment;->mListener:Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1}, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setListener(Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;)V
    .locals 0
    .param p1    # Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    iput-object p1, p0, Lim/shimo/react/prompt/RNPromptFragment;->mListener:Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method
