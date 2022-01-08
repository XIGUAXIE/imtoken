.class public final Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$s;
.super Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$s;->b:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$s;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/appbar/AppBarLayout;Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;)V
    .locals 1

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/message/b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$s;->b:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$s;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$s;->b:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    :goto_0
    return-void
.end method
