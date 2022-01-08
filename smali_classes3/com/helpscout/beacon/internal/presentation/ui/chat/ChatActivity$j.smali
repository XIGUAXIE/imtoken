.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$j;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/g;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$j;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/g;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$j;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/g;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$j;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/g;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
