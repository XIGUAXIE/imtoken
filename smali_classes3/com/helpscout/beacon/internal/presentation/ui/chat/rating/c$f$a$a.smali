.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a;

    iput p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a$a;->b:I

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a$a;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a$a;->b:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a$a;->b:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a$a;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a;

    iget-object v2, v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;

    iget-object v2, v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-static {v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a$a;->c:Landroid/view/View;

    iget v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f$a$a;->b:I

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollBy(II)V

    return-void
.end method
