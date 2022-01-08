.class public final synthetic Lcoil/EventListener$Factory$-CC;
.super Ljava/lang/Object;
.source "EventListener.kt"


# direct methods
.method public static create(Lcoil/EventListener;)Lcoil/EventListener$Factory;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcoil/EventListener$Factory;->Companion:Lcoil/EventListener$Factory$Companion;

    invoke-virtual {v0, p0}, Lcoil/EventListener$Factory$Companion;->create(Lcoil/EventListener;)Lcoil/EventListener$Factory;

    move-result-object p0

    return-object p0
.end method
