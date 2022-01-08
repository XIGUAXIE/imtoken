.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$e;
.super Lcom/helpscout/beacon/internal/presentation/common/n/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$e;->h:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/n/e;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-void
.end method


# virtual methods
.method public a(IILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$e;->h:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/a/d/c/g$b;

    invoke-direct {p3, p1}, Lcom/helpscout/beacon/a/d/c/g$b;-><init>(I)V

    invoke-virtual {p2, p3}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method
