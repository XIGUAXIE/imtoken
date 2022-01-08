.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    const/4 p1, 0x1

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    if-eq p2, v1, :cond_2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    :cond_0
    return-void
.end method
