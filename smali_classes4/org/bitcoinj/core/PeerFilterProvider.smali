.class public interface abstract Lorg/bitcoinj/core/PeerFilterProvider;
.super Ljava/lang/Object;
.source "PeerFilterProvider.java"


# virtual methods
.method public abstract beginBloomFilterCalculation()V
.end method

.method public abstract endBloomFilterCalculation()V
.end method

.method public abstract getBloomFilter(IDJ)Lorg/bitcoinj/core/BloomFilter;
.end method

.method public abstract getBloomFilterElementCount()I
.end method

.method public abstract getEarliestKeyCreationTime()J
.end method

.method public abstract isRequiringUpdateAllBloomFilter()Z
.end method
