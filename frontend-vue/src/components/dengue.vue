<template>
    <div class="main-content ptb-40">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <h4> Health Data Analysis Tool (HDAT)</h4>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="container">

                        <fieldset class="ptb-20 mb-30">
                            <legend>Personal Information:</legend>
                            <div class="row mb-20">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="name" class="mb-10">Patient Name:</label>
                                        <input v-model="person_info.name" type="text" class="form-control" id="name"
                                            placeholder="Enter Patient name">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="mb-15">Gender:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.sex">
                                            <Radio label="1">Male</Radio>
                                            <Radio label="2">Female</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="age" class="mb-10">Age (month):</label>
                                        <input v-model="dengue_info.age" type="number" class="form-control" id="age"
                                            placeholder="Enter your age">
                                    </div>
                                </div>

                            </div>
                            <div class="row mb-20">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="height" class="mb-10">Height (m):</label>
                                        <input v-model="dengue_info.hgt" type="number" class="form-control" id="height"
                                            placeholder="Enter your height">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="weight" class="mb-10">Weight (kg):</label>
                                        <input v-model="dengue_info.wgt" type="number" class="form-control" id="weight"
                                            placeholder="Enter your weight">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="mb-20">Presence of Fever:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.fever">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="0">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <!-- generic information -->
                        <fieldset class="mb-30">
                            <legend>Generic Information</legend>
                            <div class="row mb-20">
                                <div class="col-md-4 mb-15">
                                    <div class="form-group">
                                        <label class="mb-15">Presence of Joint Pain:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.j_pain">
                                            <Radio label="1">Present</Radio>
                                            <Radio label="0">Absent</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-15">
                                    <div class="form-group">
                                        <label class="mb-15">Presence of Skin Rash:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.s_rash">
                                            <Radio label="1">Present</Radio>
                                            <Radio label="0">Absent</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-15">
                                    <div class="form-group">
                                        <label class="mb-15">Presence of Severe Headach:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.headache">
                                            <Radio label="1">Present</Radio>
                                            <Radio label="0">Absent</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Presence of Adominal Pain:</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.abdo_pain">
                                            <Radio label="1">Present</Radio>
                                            <Radio label="0">Absent</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Presence of Vomiting :</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.vomit">
                                            <Radio label="1">Present</Radio>
                                            <Radio label="0">Absent</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Presence of Bleeding :</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.bleed">
                                            <Radio label="1">Present</Radio>
                                            <Radio label="0">Absent</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <!-- generic information -->
                        <fieldset>
                            <legend>Medical Information</legend>
                            <div class="row mb-20">
                                <div class="col-md-4 mb-15">
                                    <div class="form-group">
                                        <label for="platelet" class="mb-10">Platelet Count:</label>
                                        <input v-model="dengue_info.platelet" type="number" name="platelet"
                                            class="form-control" id="platelet" placeholder="Platelet Count">
                                    </div>
                                </div>
                                <div class="col-md-4 mb-15">
                                    <div class="form-group">
                                        <label for="hematocrit" class="mb-10">Hematocrit level:</label>
                                        <input v-model="dengue_info.hemato" type="number" name="hematocrit"
                                            class="form-control" id="hematocrit" placeholder="Hematocrit level">
                                    </div>
                                </div>
                                <div class="col-md-4 mb-15">
                                    <div class="form-group">
                                        <label for="white_blood" class="mb-10">White Blood Cell Count:</label>
                                        <input v-model="dengue_info.wbc" type="number" name="white_blood"
                                            class="form-control" id="white_blood" placeholder="White Blood Cell Count">
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-20">
                                <div class="col-md-4">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">NS1 Antigen Test Result :</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.ns1_anti">
                                            <Radio label="1">Positive</Radio>
                                            <Radio label="0">Negative</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">IgM Antibody Test Result :</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.igm_anti">
                                            <Radio label="1">Positive</Radio>
                                            <Radio label="0">Negative</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">IgG Antibody Test Result :</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.igg_anti">
                                            <Radio label="1">Positive</Radio>
                                            <Radio label="0">Negative</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="row mb-20">
                                <div class="col-md-4">
                                    <div class="form-group mt-15">
                                        <label class="mb-15">Hospitalization :</label>
                                        <br>
                                        <RadioGroup v-model="dengue_info.hospi">
                                            <Radio label="1">Yes</Radio>
                                            <Radio label="0">No</Radio>
                                        </RadioGroup>
                                    </div>
                                </div>
                            </div> -->
                        </fieldset>
                    </div>
                    <div class="d-grid gap-2 text-center ptb-20">
                        <button @click="predictDengue()" type="button" class="btn btn-primary"
                            name="predict">Predict</button>
                    </div>
                </div>


                <Modal v-model="result_modal" title="Dengue Prediction result" @on-ok="ok" @on-cancel="cancel">
                    <h2>Hello {{ person_info.name }} !!</h2>
                    <div>
                        <h5 v-if="result.data == 1">
                            Machine predicted Dengue Positive !! &#128549;
                            <br>
                            Suggestion for Hospitalization.
                        </h5>
                        <h5 v-if="result.data == 0">Machine predicted Dengue Negative !! &#128522;</h5>
                    </div>
                </Modal>

            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios';

export default {
    data() {
        return {
            result: {
                data: 0
            },
            result_modal: false,
            person_info: {
                name: ""
            },
            dengue_info: {
                igg_anti: "",
                sex: "",
                age: "",
                wgt: "",
                hgt: "",
                fever: "",
                platelet: "",
                hemato: "",
                wbc: "",
                j_pain: "",
                s_rash: "",
                headache: "",
                abdo_pain: "",
                vomit: "",
                bleed: "",
                ns1_anti: "",
                igm_anti: "",
                // hospi: ""
            }


        }
    },
    methods: {
        async predictDengue() {
            if (this.hasEmptyOrNullValues(this.dengue_info)) {
                this.$Message.error('All Field is required');
                return;
            }
            const response = await axios.post('dengue/prediction/', this.dengue_info);
            if (response.data.status === 'OK') {
                this.result.data = response.data.predictions;
                this.result_modal = true;
            }
            else {
                this.$Message.error(response.data.message);
            }
        },

        hasEmptyOrNullValues(obj) {
            for (const key in obj) {
                if (obj[key] === "" || obj[key] === null) {
                    return true; // Return true if any key has an empty string or null value
                }
            }
            return false; // Return false if all keys have valid values
        }
    },
}
</script>