.class final Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$$inlined$apply$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->renderSendButton(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/text/Editable;",
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroid/text/Editable;",
        "it",
        "",
        "invoke",
        "(Landroid/text/Editable;)V",
        "com/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$1$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $isTyping$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$$inlined$apply$lambda$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$$inlined$apply$lambda$1;->$isTyping$inlined:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/text/Editable;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$$inlined$apply$lambda$1;->invoke(Landroid/text/Editable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$$inlined$apply$lambda$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->access$afterSendTextChanged(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;Landroid/text/Editable;)V

    return-void
.end method
