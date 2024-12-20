.class public final Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;
.super Ljava/lang/Object;
.source "McfCallbackMotDrsdv2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotDRSDv2Result"
.end annotation


# instance fields
.field public hdrConfidence_dre_comp:D

.field public hdrConfidence_dre_nn:D

.field public hdrConfidence_gmd:D

.field public hdrConfidence_map_comp:D

.field public hdrConfidence_map_nn:D

.field public isHdrDetected:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->isHdrDetected:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_dre_comp:D

    .line 4
    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_dre_nn:D

    .line 5
    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_gmd:D

    .line 6
    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_map_comp:D

    .line 7
    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_map_nn:D

    return-void
.end method
