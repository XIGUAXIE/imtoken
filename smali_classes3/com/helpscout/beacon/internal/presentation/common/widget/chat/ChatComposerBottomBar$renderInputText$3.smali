.class final Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->renderInputText(ZLkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\n\u001a\u00020\u00072\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0006\u001a\n \u0001*\u0004\u0018\u00010\u00050\u0005H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 0>",
        "",
        "keyCode",
        "Landroid/view/KeyEvent;",
        "keyEvent",
        "",
        "onKey",
        "(Landroid/view/View;ILandroid/view/KeyEvent;)Z",
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
.field final synthetic $sendClick:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$3;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$3;->$sendClick:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "keyEvent"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$3;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$3;->$sendClick:Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->access$sendClickIfThereIsAMessage(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    return p3
.end method
