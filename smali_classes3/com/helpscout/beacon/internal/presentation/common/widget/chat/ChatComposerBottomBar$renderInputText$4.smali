.class final Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->renderInputText(ZLkotlin/jvm/functions/Function0;)V
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

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$4;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$4;->$sendClick:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$4;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$4;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$4;->$sendClick:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->access$sendClickIfThereIsAMessage(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
