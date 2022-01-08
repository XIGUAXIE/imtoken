.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$i;
.super Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;
.source "SourceFile"


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
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$i;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public shouldHideDividersForItemAt(I)Z
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$i;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;

    return p1
.end method
