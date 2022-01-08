.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$p;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$p;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeChanged(II)V
    .locals 0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$p;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;

    sget p2, Lcom/helpscout/beacon/ui/R$id;->chatHistoryRecycler:I

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "chatHistoryRecycler"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/j;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$p;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;

    sget p2, Lcom/helpscout/beacon/ui/R$id;->chatHistoryRecycler:I

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "chatHistoryRecycler"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/j;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
