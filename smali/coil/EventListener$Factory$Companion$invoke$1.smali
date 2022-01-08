.class final Lcoil/EventListener$Factory$Companion$invoke$1;
.super Ljava/lang/Object;
.source "EventListener.kt"

# interfaces
.implements Lcoil/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/EventListener$Factory$Companion;->create(Lcoil/EventListener;)Lcoil/EventListener$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcoil/EventListener;",
        "it",
        "Lcoil/request/ImageRequest;",
        "create"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $listener:Lcoil/EventListener;


# direct methods
.method constructor <init>(Lcoil/EventListener;)V
    .locals 0

    iput-object p1, p0, Lcoil/EventListener$Factory$Companion$invoke$1;->$listener:Lcoil/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcoil/request/ImageRequest;)Lcoil/EventListener;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcoil/EventListener$Factory$Companion$invoke$1;->$listener:Lcoil/EventListener;

    return-object p1
.end method
