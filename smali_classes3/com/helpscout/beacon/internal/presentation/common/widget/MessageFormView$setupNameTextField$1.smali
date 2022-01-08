.class final Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$setupNameTextField$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->setupNameTextField(ZZLjava/lang/String;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "()V",
        "showNameAndSetTextWatcher"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $nameDataChanged:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$setupNameTextField$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$setupNameTextField$1;->$nameDataChanged:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$setupNameTextField$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$setupNameTextField$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->messageNameInputLayout:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "messageNameInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$setupNameTextField$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->messageName:I

    invoke-virtual {v0, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/common/widget/FocusBasedTextWatcher;

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$setupNameTextField$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    sget v4, Lcom/helpscout/beacon/ui/R$id;->messageName:I

    invoke-virtual {v3, v4}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v4, "messageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$setupNameTextField$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    sget v5, Lcom/helpscout/beacon/ui/R$id;->messageNameInputLayout:I

    invoke-virtual {v4, v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$setupNameTextField$1;->$nameDataChanged:Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v3, v4, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/FocusBasedTextWatcher;-><init>(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
