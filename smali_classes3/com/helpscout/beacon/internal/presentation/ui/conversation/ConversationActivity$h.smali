.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;
.super Lcom/helpscout/beacon/internal/presentation/common/n/g;
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
.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;->d:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/g;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h$a;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;->a()Lcom/helpscout/beacon/a/d/b/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/b;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    const-string p1, "id"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;->d:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-static {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;->a()Lcom/helpscout/beacon/a/d/b/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/b;->e()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
