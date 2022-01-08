.class final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->e(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
