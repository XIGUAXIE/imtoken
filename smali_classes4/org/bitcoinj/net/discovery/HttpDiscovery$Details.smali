.class public Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;
.super Ljava/lang/Object;
.source "HttpDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/net/discovery/HttpDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Details"
.end annotation


# instance fields
.field public final pubkey:Lorg/bitcoinj/core/ECKey;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/ECKey;Ljava/net/URI;)V
    .locals 0
    .param p1    # Lorg/bitcoinj/core/ECKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;->pubkey:Lorg/bitcoinj/core/ECKey;

    .line 51
    iput-object p2, p0, Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;->uri:Ljava/net/URI;

    return-void
.end method
