.class final Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->renderSendButton(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onClick",
        "(Landroid/view/View;)V",
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

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$2;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$2;->$sendClick:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$2;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$2;->$sendClick:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->access$sendClickIfThereIsAMessage(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
