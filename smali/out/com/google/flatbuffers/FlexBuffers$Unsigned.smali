.class Lcom/google/flatbuffers/FlexBuffers$Unsigned;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Unsigned"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteToUnsignedInt(B)I
    .registers 2
    .param p0, "x"    # B

    .line 1090
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method static intToUnsignedLong(I)J
    .registers 5
    .param p0, "x"    # I

    .line 1098
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static shortToUnsignedInt(S)I
    .registers 2
    .param p0, "x"    # S

    .line 1094
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
