.class public Lcom/subgraph/orchid/encoders/DecoderException;
.super Ljava/lang/IllegalStateException;
.source "DecoderException.java"


# static fields
.field private static final serialVersionUID:J = 0x455a65dc5e50c39dL


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p2, p0, Lcom/subgraph/orchid/encoders/DecoderException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/subgraph/orchid/encoders/DecoderException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
