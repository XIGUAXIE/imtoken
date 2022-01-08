.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversation/c$a;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/c$a;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/c$a;->b(Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;

    if-eqz v0, :cond_0

    instance-of p1, p2, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    if-nez v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;->a()Lcom/helpscout/beacon/a/d/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;->a()Lcom/helpscout/beacon/a/d/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/d/b/b;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
