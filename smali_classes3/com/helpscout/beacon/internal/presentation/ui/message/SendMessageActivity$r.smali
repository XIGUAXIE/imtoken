.class final Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$r;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$r;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$b;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$r;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$b;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$r;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->finish()V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$r;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method