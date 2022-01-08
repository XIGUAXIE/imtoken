.class public abstract Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;->IDLE:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/material/appbar/AppBarLayout;Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;)V
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;->EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;->COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;->IDLE:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    if-eq p2, v0, :cond_2

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b;->a(Lcom/google/android/material/appbar/AppBarLayout;Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;)V

    :cond_2
    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    return-void
.end method
