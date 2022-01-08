.class final Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;
    .locals 3

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f$a;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f;)V

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;

    invoke-static {v2}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;)Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;-><init>(Lkotlin/jvm/functions/Function1;Lcom/helpscout/beacon/internal/presentation/common/d;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f;->a()Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;

    move-result-object v0

    return-object v0
.end method
