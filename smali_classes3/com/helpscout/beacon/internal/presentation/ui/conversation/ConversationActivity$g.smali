.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/presentation/common/widget/refreshlayout/ViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$g;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReadyForPull()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$g;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->conversationDataView:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;->canScroll()Z

    move-result v0

    return v0
.end method
